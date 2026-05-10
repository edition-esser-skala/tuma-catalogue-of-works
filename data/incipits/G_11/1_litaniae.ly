\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    R1*2
    r2 d'4. d8
    c h16 a f'4 e8 e d4
    cis r r a8 a
    b8. b16 b8 d d4. d8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    a'4. a8 f e16 d b'4
    a4. a8 g a16 b a8 g
    f f e4 f4. g8
    a e r a a4. g8
    a4 e8 e f8. f16 f4
    g2 f4. f8
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2
    r2 d'4.^\tutti d8
    c h16[ a] f'4 e8 e d4
    cis r r a8 a
    b8. b16 b8 d d4. d8
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- son, e -- lei --
  son, Chri -- ste
  au -- di nos, Chri -- ste "ex -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    a'4.^\tutti a8 f e16[ d] b'4
    a4. a8 g[ a16 b] a8[ g]
    f f e4 f4. g8
    a e r a a4. g8
    a4 e8 e f8. f16 f4
    g2 f4. f8
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  son, e -- lei -- son, e --
  lei -- son, e -- lei -- _
  son, Chri -- ste au -- di nos,
  Chri -- ste "ex -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r2 d4.^\tutti d8
    c h16[ a] f'4 e4. e8
    e d4 cis8 d4. b8
    c4 d cis8 cis d4
    e r r d8 d
    d8. d16 d8 d h!4. h8
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- son, e --
  lei -- _ _ son, e --
  lei -- _ son, e -- lei --
  son, Chri -- ste
  au -- di nos, Chri -- ste "ex -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2
    a'4.^\tutti a8 f e16[ d] b'4
    a d,16[ e] f[ g] a8 a, b4
    a r r d8 d
    g8. g16 g8 g gis4. gis8
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, Ky -- ri -- e e -- lei --
  son, Chri -- ste
  au -- di nos, Chri -- ste "ex -"
}

Organo = {
  \relative c {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Andante"
    << {
      a''4. a8 f e16 d b'4
      a4. a8 g a16 b a8 g
    } \\ {
      r2-\tutti d4. d8
      c h16 a f'4 e4. e8
    } >>
    \clef bass a,4. a8 f e16 d b'4
    a d,16 e f g a8 a, b4
    a \clef alto e''8-! e-! f4-! \clef bass d,8 d
    g4. g8 gis4. gis8
  }
}

BassFigures = \figuremode {
  r1
  r
  <6 5>8 <\t 4> <5 \t> <\t _+> <6>4 <5>8 <6>
  <6>2 <_+>4 <7>8 <6>
  <_+>1
  <_->2 <7! 5>
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
