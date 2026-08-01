\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    R1*4
    a'8. a16 b4 g8 a g g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    R1*3
    r2 r4 a'8. a16
    f8 f g4 g8 f d e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    r4 c'8^\solo c c8. c16 c8 h
    c c16 b a8 b g4 f
    a8.^\tutti a16 b4 r g8 g
  }
}

SopranoLyrics = \lyricmode {
  Ge -- ne -- ra -- ti -- o re --
  cto -- rum be -- ne -- di -- ce -- tur,
  glo -- ri -- a, et "iu -"
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 r8 c^\solo c d16[ e] f8. f16
    e4 r r8 f f e
    f f, f' a g f16[ e] d4
    e r r a8.^\tutti a16
    f8 f g g g f d e
  }
}

AltoLyrics = \lyricmode {
  Qui ti -- met Do -- mi --
  num, po -- tens in
  ter -- ra e -- rit se -- men e --
  ius, glo -- ri --
  a in do -- mo e -- ius, et "iu -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r8 c^\solo b16[ a] b[ c] a4 a8 a
    g a16[ b] c8 b a b g4
    f r r2
    r c'8.^\tutti c16 a4
    d8. d16 d8 d c c b[ c]
  }
}

TenoreLyrics = \lyricmode {
  Be -- a -- tus vir in man --
  da -- tis e -- ius vo -- let ni --
  mis,
  glo -- ri -- a,
  glo -- ri -- a in do -- mo "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*3
    r2 r4 f8^\tutti f
    d8. d16 g8 g e f f[ e]
  }
}

BassoLyrics = \lyricmode {
  Et di --
  vi -- ti -- ae in do -- mo "e -"
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "Allegro"
    f4~-\solo f8 e f4 a,8 f
    c' b a c d b c4
    f,4. f'8 e a f g
    c, e f b, c4 f-\tutti
    d g e8 f4 e8
  }
}

BassFigures = \figuremode {
  r4 <2>8 <6> r2
  r4. <7> <4>8 <3>
  r2 <6>4 <6 5>8 <_!>
  r <6>16 <5-> r4 <4>8 <3>4.
  r2 <6>4 <2>8 <6>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
