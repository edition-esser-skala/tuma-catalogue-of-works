\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro [un poco]"
    a'4-! a,8-! a'-! g f e d
    c-! e'-! e8. f,16 e8 d c h \gotoBar "5"
    f''8 d h4\trill a a,8 a'
    g! f e d c e' e8. f,16
    e8 d c h a a'' a8. e16
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro [un poco]"
    a'4 a,8 a' g f e d
    c e' e8. f,16 e8 d c h \gotoBar "5"
    a'4 gis\trill a a,8 a'
    g f e d c e' e8. f,16
    e8 d c h a a'' a8. e16
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro [un poco]"
    R1*2 \gotoBar "5"
    r2 a'8.^\tutti a16 a8 a
    h2 c4 r8 a
    h2 c4 r8 e
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son, "e -"
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro [un poco]"
    R1*2 \gotoBar "5"
    r2 e8.^\tutti e16 e8 e
    g2 g4 r8 a
    gis2 a4 r8 a
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son, "e -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro [un poco]"
    R1*2 \gotoBar "5"
    r2 c8.^\tutti c16 c8 c
    d2 e4 r8 c
    e2 e4 r8 a,
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son, "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro [un poco]"
    R1*2 \gotoBar "5"
    r2 a'8.^\tutti a,16 a8 a'
    g[ f e d] c4 r8 f
    e[ d c h] a4 r8 cis
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e --
  lei -- son, "e -"
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegro [un poco]"
    a'4-!-\solo a,8-! a'-! g-! f-! e-! d-!
    c4-! r8 f-! e-! d-! c-! h-! \gotoBar "5"
    d4 e a-\tutti a,8 a'
    g f e d c4 r8 f
    e d c h a4 r8 cis
  }
}

BassFigures = \figuremode {
  r1
  r
  <6 5>4 <_+>2.
  <8 5 3>4 <\t \t \t>2.
  <_+>1
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
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
