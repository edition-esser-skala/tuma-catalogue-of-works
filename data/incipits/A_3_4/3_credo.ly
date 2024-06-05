\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
     a'4\f a8 a g g a4
    a8 a a g a g16 g g4
    a a8 g fis4 fis8 fis
    g8. d16 d4 g8 g g g
    e4. e8 d r r4
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    f4\f f8 f e d e4
    f8 f e d c d16 d c4
    c c8 c c4 c8 c
    b8. b16 b8 d4 d8 d d
    cis4. cis8 d r r4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    d'4.\f d8 d4. cis8
    d4 e f8 f,4 e8
    f4 a a2
    b2. b4
    a r r8 b'16( d,) \grace d cis8 e16 g,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    f4\f a g a
    a4. g8 a g g4
    a a8 g fis4. fis8
    d4. d8 d4 g8 g
    e4 r r8 b''16 d, \grace d cis8 e16 g,
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    d'4 d8 d d d d[ cis]
    d d e e f f,16 f f8[ e]
    f4 a8 a a4 a8 a
    b4 b8 b b b b b
    a4. a8 a r r4
  }
}

SopranoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um.
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    a'4^\tutti a8 a g g a4
    a8 a a g a g16 g g4
    a a8 g fis4 fis8 fis
    g8. d16 d4 g8 g g g
    e4. e8 d r r4
  }
}

AltoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    f4 f8 f e d e4
    f8 f e d c d16 d c4
    c c8 c c4 c8 c
    b8. b16 b8 d4 d8 d d
    cis4. cis8 d r r4
  }
}

TenoreLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um.
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    d4 f8 d g b a4
    d,8 d c! b a b16 b c4
    f, f'8 es d4 d8 d
    g4 g8 g g a b g
    a4. a,8 d r r4
  }
}

BassoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um.
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Allegro"
    d4 f8 d g b a4
    d,8 d c! b a b c4
    f, f'8 es d4. d8
    g,2 g'8 a b g
    a4 a, d8 g a cis,
  }
}

BassFigures = \figuremode {
  r2. <5 4>8 <\t _+>
  r2 <6>
  r <7 _+>
  <_->1
  <_+>2 r8 <_-> <_+>4
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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
